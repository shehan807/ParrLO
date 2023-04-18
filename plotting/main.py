import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


def scrape_output(output_path, ) -> pd.DataFrame:
    """
    scrape_output scrapes the output of the program and returns a pandas dataframe
    """
    with open(output_path, 'r') as f:
        lines = f.readlines()
    atr = {
        "n": [],
        "gpus": [],
        "matrix_ortho": [],
        "ortho": [],
        "allreduce": [],
        "host_device": [],
        "host_array_allocation": [],
        "schulz": [],
        "mem_init": [],
        "schulz": [],
        "aTa": [],
        "MatMul": [],
    }
    for l in lines:
        print(l)
        if l.startswith("procs"):
            l = l.split("=")
            n, g = int(l[1].split()[0]), int(l[2])
            atr["n"].append(n)
            atr["gpus"].append(g)
        elif "::ortho" in l:
            l = l.split('/')
            atr["ortho"].append(float(l[1]))
        elif "Timer: matrix_ortho" in l:
            l = l.split('/')
            atr["matrix_ortho"].append(float(l[1]))
        elif "::allreduce" in l:
            l = l.split('/')
            atr["allreduce"].append(float(l[1]))
        elif "::host_device_transfer" in l:
            l = l.split('/')
            atr["host_device"].append(float(l[1]))
        elif "::memory_initialization" in l:
            l = l.split('/')
            atr["mem_init"].append(float(l[1]))
        elif "::host_array_allocation" in l:
            l = l.split('/')
            atr["host_array_allocation"].append(float(l[1]))
        elif "schulz" in l:
            l = l.split('/')
            atr["schulz"].append(float(l[1]))
        elif "::compute_aTa" in l:
            l = l.split('/')
            atr["aTa"].append(float(l[1]))
        elif "::matrix_matrix_multiply" in l:
            l = l.split('/')
            atr["MatMul"].append(float(l[1]))
    df = pd.DataFrame(atr)
    return df


def fig2():
    # Read data
    df = pd.read_csv("data/fig2.csv", header=None, names=["x", "y"])
    df2 = pd.read_csv("data/fig2_hive.csv")
    # print("Hive1 Results")
    df2['ys'] = df2.apply(lambda row: row['matmul'] / row['schulz'], axis=1)

    # Plot
    fig, ax = plt.subplots(dpi=300)
    c1 = "tab:blue"
    c2 = "tab:orange"
    ax.plot(df["x"], df["y"], "o", color=c1)
    ax.set_xlabel("Matrix Size (n)")
    ax.tick_params(axis="y", labelcolor=c1)
    ax.set_ylabel("MatMul : Diagonalization", color=c1)

    ax2 = ax.twinx()
    ax2.plot(df2['n'], df2['ys'], "o", label="Hive Results", color=c2)
    ax2.set_ylabel("MatMul : Schulz Iteration", color=c2)
    ax2.set_ylim(0, 0.040)
    ax2.tick_params(axis="y", labelcolor=c2)

    fig.tight_layout()
    plt.savefig("plots/fig2.png")
    return


def fig7() -> None:
    df = pd.read_csv("data/t1/all.csv")
    # df['Total'] = df.apply(lambda row: row['ortho'] + row['allreduce'] + row[
    #     'host_device'] + row['mem_init'] + row['schulz'],
    #                        axis=1)

    fig, ax = plt.subplots(dpi=300)
    # ax.plot(df["n"], df["Total"], "-o", label="Total")
    ax.plot(df["n"], df["ortho"], "-o", label="Total")
    ax.plot(df["n"], df["allreduce"], "-o", label="AllReduce")
    ax.plot(df["n"], df["host_device"], "-o", label="Host to Device")
    ax.plot(df["n"], df["mem_init"], "-o", label="Memory Initialization")
    ax.plot(df["n"], df["schulz"], "-o", label="Schulz Iterations")
    ax.plot(df["n"], df["MatMul"], "-o", label="MatMul")
    ax.set_xlabel("MPI Tasks")
    ax.set_ylabel("Time (s)")
    ax.set_yscale("log")
    plt.legend()
    plt.savefig("plots/fig7.png")

    # Bar chart
    fig, ax = plt.subplots(dpi=300)
    df.drop(columns=["n"], inplace=True)
    df.drop(columns=["gpus"], inplace=True)
    labels = df.columns.values
    print(labels)
    labels = [
        'Total',
        'AllReduce',
        'H to D',
        'Mem Init',
        'Schulz',
        'A^TA',
        "MatMul",
    ]
    colors = [
        'tab:blue',
        'tab:orange',
        'tab:green',
        'tab:red',
        'tab:purple',
        'tab:brown',
        'tab:pink',
    ]
    print(labels)
    values = df.iloc[0].values
    # ax.bar(labels, values, colors=colors)
    ax.bar(labels, values, color=colors)
    plt.xlabel("Tasks")
    plt.ylabel("Time (s)")
    ax.set_yscale("log")
    plt.savefig("plots/fig7_bar.png")
    return


def fig7_clusters(
    data_path="data/t1/h2/ss2.log",
    cluster="hive",
    bar_graph_ind=1,
) -> None:
    """
    fig7_ice
    """
    df = scrape_output(data_path)
    fig, ax = plt.subplots(dpi=300)
    # Pretty tropical colors
    colors = [
        # tropical
        '#FFB300',  # Vivid Yellow
        '#803E75',  # Strong Purple
        '#FF6800',  # Vivid Orange
        '#A6BDD7',  # Very Light Blue
        '#C10020',  # Vivid Red
        '#CEA262',  # Grayish Yellow
        '#817066',  # Medium Gray
        '#007D34',  # Vivid Green
        '#F6768E',  # Strong Purplish Pink
        '#00538A',  # Strong Blue
    ]
    labels = [
        'Total',  # 'matrix_ortho',
        'Ortho',
        'AllReduce',
        'H to D',
        'H Alloc',
        'Schulz',
        'Mem Init',
        r'$A^TA$',
        'MatMul',
    ]
    cnt = 0
    for i in df.columns.values:
        if i == "n" or i == "gpus":
            continue
        print(i, cnt)
        ax.plot(df["n"], df[i], "-o", label=labels[cnt], c=colors[cnt])
        # ax.plot(df["n"], df[i], "-o", label=i)
        cnt += 1
    ax.set_xlabel("MPI Tasks")
    ax.set_ylabel("Time (s)")
    ax.set_yscale("log")
    ax.set_xlim(0.5, 6)
    ax.set_xticks(range(1, 7))
    plt.legend()
    plt.title(cluster.upper())
    plt.savefig(f"plots/{cluster}_fig7.png")
    fig, ax = plt.subplots(dpi=300)
    df2 = df.copy(True)
    df2.drop(columns=["n"], inplace=True)
    df2.drop(columns=["gpus"], inplace=True)

    # labels = df2.columns.values
    # print(labels)
    # labels = [
    #     'Total',  # 'matrix_ortho',
    #     'Ortho',
    #     'AllReduce',
    #     'H to D',
    #     'H Alloc',
    #     'Schulz',
    #     'Mem Init',
    #     'A^TA',
    #     'MatMul',
    # ]
    print(labels)
    values = df2.iloc[bar_graph_ind].values
    n = df["n"].iloc[bar_graph_ind]
    g = df["gpus"].iloc[bar_graph_ind]
    t = f"{cluster.upper()} with np = {n} and ngpu = {g}"
    ax.bar(labels, values, color=colors)
    ax.set_xlabel("Tasks")
    ax.tick_params(axis="x", labelsize=8)
    ax.set_ylabel("Time (s)")
    ax.set_yscale("log")
    plt.title(t)
    plt.savefig(f"plots/{cluster}_fig7_bar.png")
    return


def main():
    # fig2()
    # fig7()
    # fig7_clusters()
    fig7_clusters("data/t1/a4gpu.out", "coc-ice")
    return


if __name__ == "__main__":
    main()
