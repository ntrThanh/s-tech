---
layout: post
title:  "Đồng bộ dữ liệu với Syncthing"
date:   2025-05-16 09:59:02 +0700
categories: jekyll update
tags: [tools, linux, windows, tricks]
logo_syncthing_1: /assets/imgs/05-2025/logosyncthing.jpeg
logo_syncthing_2: /assets/imgs/05-2025/syncthing.jpg
logo_syncthing_3: /assets/imgs/05-2025/syncthing_platform.webp
syncthing_3: /assets/imgs/05-2025/guiweb.png
mobile_syncthing: /assets/imgs/05-2025/mobile_syncthing1.jpg
mobile_syncthing2: /assets/imgs/05-2025/mobile_syncthing2.jpg
---



**Syncthing** là một ứng dụng đồng bộ hóa tệp ngang hàng miễn phí và mã nguồn mở có sẵn cho Windows , macOS , Linux , Android , Solaris , Darwin và BSD. Nó có thể đồng bộ hóa tệp giữa các thiết bị trên mạng cục bộ hoặc giữa các thiết bị từ xa qua Internet, LAN mà không cần qua bên trung gian, thay thế cho các dịch vụ như Dropbox hay Google Drive. Bảo mật dữ liệu và an toàn dữ liệu được tích hợp vào thiết kế của nó.

* TOC
{:toc}


![Logo Syncthing]({{ page.logo_syncthing_1 | relative_url }})


### Những đặc điểm nổi bật của Syncthing:
- Riêng tư và an toàn: Tất cả dữ liệu được truyền trực tiếp (P2P) mà không cần qua trung gian, dữ liệu được mã hóa xác thực bằng 1 mã duy nhất.
- Mã nguồn mở: Tất cả mã nguồn của Syncthing được public trên Github và có cộng đồng người dùng đông đảo.
- Dễ sử dụng: Syncthing được phát triển để có thể hoạt động đa nền tảng Windows, Linux, macOS, Android,... Với giao diện thân thiện và dễ sử dụng.

![]({{ page.logo_syncthing_3 | relative_url }})


### Các ứng dụng thực tế của **Syncthing**:
- Đồng bộ dữ liệu cá nhân giữa điện thoại và máy tính một cách đơn giản và nhanh chóng.
- Hỗ trợ làm việc nhóm từ xa, đông bộ hóa dữ liệu dự án mà không cần phải thông qua sử dụng dịch vụ đám mây.
- Giải pháp sao lưu phân tán, đồng bộ dữ liệu đến nhiều bộ nhớ ngoài khác nhau.
- Và còn rất nhiều những tiện ích khác nữa.

![]({{ page.logo_syncthing_2 | relative_url }})

### Yêu cầu hệ thống
Yêu cầu:
- Android 6.0 trở lên.
- Ubuntu 18.04 trở lên hoặc sử dụng Windows, macOS,..
- Kết nối Internet nội bộ hoặc qua Internet công cộng.

### Cách cài đặt **Syncthing**

Ở đây tôi lấy ví dụ việc cài đặt và đồng bộ dữ liệu trên máy tính sử dụng Ubuntu và điện thoại Android kết nối đến mạng Internet, LAN (nếu trung mạng LAN). Việc cài đặt trên các hệ điều hành khác thì bạn có thể đọc thêm trên [Syncthing Forum][Syncthing-Forum].

#### Cài đặt trên Điện thoại

Các bước để cài đặt Syncthing trên điện thoại **Android**:
- Vào CH Play.
- Cài đặt ứng dụng Syncthing.
- Truy cập ứng dụng và cấp quyền bộ nhớ cho Syncthing.
- Một số hãng điện thoại Android không hỗ trợ truy cập trực tiếp vào các tệp hệ thống nên phải tải thêm ứng dụng tệp, ở đây mình đang sử dụng ứng dụng **Material Files** đề có thể tùy chỉnh được vị trí tệp muốn đồng bộ.

#### Các bước cài đặt Syncthing trên **Ubuntu**:
- Khởi động Terminal.
- Cập nhật danh sách gói và cài đặt.
{% highlight shell %}
~$ sudo apt update
~$ sudo apt install syncthing
{% endhighlight %}
- Khởi động Syncthing bằng câu lệnh `syncthing` hoặc click vào biểu tượng desktop ngoài màn hình menu.
{% highlight shell %}
~$ syncthing
{% endhighlight %}
- Truy cập địa chỉ `http://127.0.0.1:8384/` trên trình duyệt hoặc có thể sửa chỉnh sửa port khác.
![]({{ page.syncthing_3 | relative_url }})

#### Đồng bộ trên máy tính và điện thoại
Trên máy tính click vào biểu tượng `Identification` ở đây bạn có thể sử dụng 2 cách là tự cấu hình hoặc sử dụng cấu hình tự động bằng việc quét QR.

Trên điện thoại bấm vào biểu tượng thêm thiết bị ở góc màn hình, và có thể thêm thủ công hoặc quét QR để nhận diện thiết bị, sau đó đặt biệt danh cho thiết bị.

<img src="{{ page.mobile_syncthing | relative_url }}" alt="Logo Syncthing" width="200px">

Ở đây nếu kết nối thành công sẽ hiện chấm xanh trên cùng của màn hình.

Và nếu bạn muốn chia sẻ một thư mục từ điện thoại chẳng hạn như ảnh hoặc bất kì thư mục nào thì bạn chỉ cần bấm vào biểu tượng thêm thư mục ở học trên cùng bên phải để chọn thư mục mà bạn muốn chia sẻ. Chọn thiết bị bạn muốn chia sẻ (ở đây máy tính tôi đặt tên là: `My lap`).

<img src="{{ page.mobile_syncthing2 | relative_url }}" alt="Logo Syncthing" width="200px">

Trên máy tính bạn chỉ cần chấp nhận yêu cầu sau đó chọn vị trí mà bạn muốn đặt thư mục là hoàn tất.

Mỗi lần mở máy tính thì bạn chỉ cần chạy lệnh `syncthing` trên terminal là tất cả các file trong thư mục chia sẻ sẽ tự động được đồng bộ.

#### Cài đặt tự đồng bộ khi mở máy

Cách chạy tự động sau khởi động máy:
{% highlight shell %}
~$ systemctl --user enable syncthing.service
{% endhighlight %}


### Tổng kết
Syncthing là một công cụ tuyệt vời thay thế Google Drive, Dropbox nếu bạn ưu tiên bảo mật và muốn kiểm soát dữ liệu của mình.

👉 Hãy thử cài đặt và chia sẻ trải nghiệm của bạn ở phần bình luận hoặc trên [Syncthing Forum][Syncthing-Forum].

### Tham khảo
[Syncthing Doc][Syncthing-Doc]

[Wikipedia Syncthing][Syncthing-Wiki]

[Syncthing-Wiki]: https://en.wikipedia.org/wiki/Syncthing
[Syncthing-Doc]: https://docs.syncthing.net/
[Syncthing-Forum]: https://forum.syncthing.net/