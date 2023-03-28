'''

-- 이진탐색 --
개념 : 범위를 줄여 나가면서 원하는 데이터를 검색하는 알고리즘
조건 : 정렬된 리스트

원하는 숫자 : 8
찾아야 하는 리스트 : [1, 2, 3, 4, 5, 6, 7, 8, 9]

< 탐색 시작 >
찾아야 하는 리스트 : [1, 2, 3, 4, 5, 6, 7, 8, 9]
min = 1
max = 9

1) 리스트의 가운데 숫자와 원하는 숫자 비교
가운데 숫자 : 5
원하는 숫자 : 8

2) 5 < 8 이기 때문에 min = 5로 설정
min = 5
max = 9
찾아야 하는 리스트 : [5, 6, 7, 8, 9]

3) 리스트의 가운데 숫자와 원하는 숫자 비교
가운데 숫자 : 7
원하는 숫자 : 8

4) 7 < 8 이기 때문에 min = 7로 설정
min = 7
max = 9
찾아야 하는 리스트 : [7, 8, 9]

5) 리스트의 가운데 숫자와 원하는 숫자 비교
가운데 숫자 : 8
원하는 숫자 : 8

6) 8 = 8 이기 때문에 값 return(종료)
return 8

'''




def solution(n, times):
    
    min_num = 1
    max_num = max(times) * n
    
    while min_num <= max_num:

        mid = (min_num + max_num) // 2
        
        people = 0
        
        for i in times:
            people += (mid // i)
            
            if people >= n:
                break
        
        if people >= n:
            answer = mid
            max_num = mid - 1
        
        elif people < n:
            min_num = mid + 1

    return answer
