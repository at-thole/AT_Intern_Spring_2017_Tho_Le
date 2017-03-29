#DAILY REPORT
###By Le Van Tho
####08-03-2017


## What is git ?
**Git** là tên gọi của một **Hệ thống quản lý phiên bản phân tán** (Distributed Version Control System – DVCS)
Giúp mỗi máy tính có thể lưu trữ nhiều phiên bản khác nhau của một mã nguồn được nhân bản (`clone`) từ một kho chứa mã nguồn (`repository`), mỗi thay đổi vào mã nguồn trên máy tính sẽ có thể ủy thác (`commit`) rồi đưa lên máy chủ nơi đặt kho chứa chính. Và một máy tính khác (nếu họ có quyền truy cập) cũng có thể clone lại mã nguồn từ kho chứa hoặc clone lại một tập hợp các thay đổi mới nhất trên máy tính kia.
![Alt text](./dvcs.png)

##What is Repository ?
**Repository** (`kho chứa`) nghĩa là nơi mà bạn sẽ lưu trữ mã nguồn và một người khác có thể sao chép (`clone`) lại mã nguồn đó nhằm làm việc. Repository có hai loại là `Local Repository` (Kho chứa trên máy cá nhân) và `Remote Repository` (Kho chứa trên một máy chủ từ xa).

##What is github ?
**Github** chính là một **dịch vụ máy chủ repository công cộng**, mỗi người có thể tạo tài khoản trên đó để tạo ra các kho chứa của riêng mình.

##What is branch ?
**Branch**(`phân nhánh`) tạo một phiên bản thử nghiệm với mã nguồn đang làm việc trong working tree hiện tại mà không gây ảnh hưởng đến các code hiện tại

![Alt text](./git-branching.png)


##What is Pull Request ?
**Pull Request** được sinh ra nhằm mục đích để đảm bảo cho việc tương tác nhóm được tốt hơn, và hạn chế tối đa `conflict` có thể xảy ra, cũng như dễ dàng theo dấu dự án (để khôi phục trạng thái nếu lỡ có biến cố xảy ra), hay để cộng đồng nguồn mở có thể tham gia đóng góp cho dự án được thuận tiện và blah blah..

##What is git commit, git add, git push, git log?

####Commit
Để ghi lại việc thêm/thay đổi file hay thư mục vào repository thì sẽ thực hiện thao tác gọi là Commit.

Example:
>git commit -m "first commit"


#### Git add
**Git add** nhằm để đánh đấu file hoặc nhiều file mà mình vừa tạo mới, chính sửa, xóa... Đưa các file đó từ trạng thái `untracked` vào một khu vực trung gian `staging area`

Example:
>git add README.md

####Git push
Cập nhật những thay đổi của project và gửi lên server.

Example:
>git push -u origin master

####Git log
Show ra thông tin của các commit trước.

Example:
>git log


####Full example:
``` python
echo "abcd123" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:username/name-repo.git
git push -u origin master
```

##How to create branch, pull request ?

####Create branch
Chúng ta chỉ cần sử dụng lệnh:
>git branch name-branch

Và khi chúng ta chuyển nhánh :
>git checkout name-branch

Kết hợp từ 2 câu trên ta có thể kết hợp thành 1 câu nhanh gọn hơn:
>git checkout -b name-branch


####Pull request
Sau khi add và commit, trên link github ta chọn **Compare & pull request**
![Alt text](./ff.png)


Tiếp đến chọn **Create new pullrequest**
![Alt text](./bb.png)


##How to resolve conflict ?
Khi làm việc nhóm, việc gặp phải `conflict` là điều hiển nhiên và chúng ta sẽ khắc phục bằng cách nào.
Trước hết. khi gặp phải confict, đồng nghĩa với việc 1 nhánh nào đó đã đc `merge` vào nhánh chính nên chúng ta cần phải pull source code từ nhánh chính về local của mình:
>git pull name-remote branch-main

Từ github hoặc terminal ta có thể xác định được các file bị conflict và sửa nó. File bị conflict có thể như sau :

```python
<<<< HEAD
...
đoạn code nằm trên nhánh chính
...
========= my_branch
...
đoạn code trên nhánh đang làm việc
...
>>>>>>>>>>
```

Từ đó ta phải xác định được phần `HEAD` là đoạn code đã có trước và chúng ta có muốn sử dụng tiếp hay loại bỏ rồi tương tự các file bị conflict khác. Sau khi chỉnh sửa xong ta có thể `push` lên bình thường !


##How to delete branch ?
Để xóa branch thì hãy chỉ định lựa chọn -d trong lệnh branch rồi thực hiện
>git branch -d branchname

##Compare rebase and merge

- Sử dụng git rebase nếu như  muốn các sự thay đổi thuộc về branch luôn luôn là mới nhất.
- Sử dụng git merge nếu muốn sắp xếp các commit theo mặc định.
Khuyết điểm của git merge là làm cho git commit list dài ra. Khó trace log. Nhất là trong 1 dự án dài hơi, việc nhìn lại log của vài tháng trước có thể sẽ là vấn đề.
