 
<div id="footer">
 
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title" style="color:White;">Về chúng tôi</div>
                    <ul>
                        <li>
                            <a href="{{ route('get.blog.home') }}">Bài viết</a>
                        </li>
                        <li>
                            <a href="{{ route('get.product.list') }}">Sản phẩm</a>
                        </li>
                        <li>
                            <a href="{{ route('get.register') }}">Đăng ký</a>
                        </li>
                        <li>
                            <a href="{{ route('get.login') }}">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
                
                <div class="item">
                    <div class="title " style="color:White;">Chính sách</div>
                    <ul>
                        <li><a href="{{ route('get.static.shopping_guide') }}">Hướng dẫn mua hàng</a></li>
                        <li><a href="{{  route('get.static.return_policy') }}">Chính sách đổi trả</a></li>
                        
                    </ul>
                </div>
                <div class="item">
                    <div class="title" style="color:White;">Tin tức</div>
                    <ul>
                        @if (isset($menus))
                            @foreach($menus as $menu)
                                <li>
                                    <a title="{{ $menu->mn_name }}"
                                        href="{{ route('get.article.by_menu',$menu->mn_slug.'-'.$menu->id) }}">
                                        {{ $menu->mn_name }}
                                    </a>
                                </li>
                            @endforeach
                        @endif
                        <li><a href="{{ route('get.contact') }}"style="color:White;">Phản hồi</a></li>
                    </ul>
                </div> 
            </div>
            {{-- <div class="bot">
                <div class="social">
                    <div class="title"style="color:White;">KẾT NỐI VỚI CHÚNG TÔI</div>
                    <p>
                        <a href="" class="fa fa fa-youtube"></a>
                        <a href="" class="fa fa-facebook-official"></a>

                    </p>
                </div>
            </div> --}}
        </div>
        <div class="footer__mid">
            <div class="title" style="color:White;">Hệ thống cửa hàng</div>
            <div class="image">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12277.43217063525!2d105.765332127615!3d10.035145441150682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08818d0fe9389%3A0x829a16c5f06b1c99!2zQW4gUGjDuiwgTmluaCBLaeG7gXUsIEPhuqduIFRoxqEsIFZp4buHdCBOYW0!5e1!3m2!1svi!2sus!4v1698940601063!5m2!1svi!2sus" width="290" height="150" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            
        </div>
        
        <div class="footer__right">
            <div class="title" style="color:White;">Fanpage của chúng tôi</div>
            <div class="image">
                <div class="fb-page"
                      data-href="https://www.facebook.com/profile.php?id=61553247712654&mibextid=ZbWKwL"
                      data-width="280"
                      data-height="1500"
                      data-hide-cover="false"
                      data-show-facepile="false" ></div>
            </div> 
        </div>
          
    </div>
</div>
  <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=3205159929509308&autoLogAppEvents=1"></script> 

{{-- $(window).scroll(function() {
    if ($(this).scrollTop() > 50) {
        $('#back-to-top').fadeIn();
    } else {
        $('#back-to-top').fadeOut();
    }
}); --}}

{{-- $('#back-to-top').click(function() {
    $('body,html').animate({
        scrollTop: 0
    }, 1000);
    return false;
}); --}}
