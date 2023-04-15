def solution(operations):
    
    q = []
    
    for i in operations:
        temp = i.split()
        if temp[0] == 'I':
            q.append(int(temp[1]))
            
        elif temp[0] == 'D' and len(q) != 0:
            if temp[1] == '1':
                q.pop(q.index(max(q)))
            elif temp[1] == '-1':
                q.pop(q.index(min(q)))
    
    if len(q) == 0:
        return [0, 0]
    else:
        return [max(q), min(q)]