def solution(num, n):
    if num % n == 0: #나머지가 0이면 (배수)
        return 1     #1 반환
    else: 
        return 0     #그렇지 않으면 0 반환