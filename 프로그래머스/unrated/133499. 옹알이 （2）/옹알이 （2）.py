def solution(babbling):
    
    pron = ['aya', 'ye', 'woo', 'ma']
    
    for i in range(len(babbling)):
        for j in range(1, len(pron)+1):
            babbling[i] = babbling[i].replace(pron[j-1], str(j))
    
    
    answer = 0
    for i in babbling:
        try:
            for j in range(1, len(str(int(i)))):
                if i[j] == i[j-1]:
                    answer -= 1
                    break
            answer += 1
        except:
            continue
    
    
    
    return answer