def solution(arr):
    answer = []
    for num in arr:
        if num >= 50 and num % 2 == 0: #값이 50보다 크거나 같은 짝수
            answer.append(num / 2) #2로 나누기
        elif num < 50 and num % 2 == 1: #값이 50보다 작은 홀수
            answer.append(num * 2) #2를 곱하기
        else:
            answer.append(num) #그 외는 그대로 출력
    return answer