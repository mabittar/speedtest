import speedtest

def internet_test():
    s = speedtest.Speedtest()
    s.get_servers()
    s.get_best_server()
    s.download(threads=2)
    s.upload(pre_allocate=False, threads=2)
    return s.results.share()
    results_dict = s.results.dict()
    return results_dict

if __name__ == '__main__':
    result = internet_test()
    print(result)