<?php
namespace app\models;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Vk {

    public function vk($data_name) {
        
        for ($i = 1; $i < 150; $i++) {
            $token = "https://oauth.vk.com/access_token?
               client_id=6613742&
               client_secret=7YHxoN9al9b3XCWDPrVr&
               redirect_uri=http://parser.alexweber.ru/
               &code=78011b4978011b4978011b49a67865f1a77780178011b49232f0e29c1c81533f40a62fc";
            $code = urlencode('return API.users.get(
{
    "user_ids":"91503273",
    "fields":"photo_50",
    "v":"5.68"
});
');
            $query = file_get_contents("https://api.vk.com/method/users.get?user_ids=$i&fields=bdate,has_photo,has_mobile,contacts,photo_id,photo_100,photo_400_orig,home_phone,mobile_phone,personal,city&access_token=78011b4978011b4978011b49a67865f1a77780178011b49232f0e29c1c81533f40a62fc&v=5.80");
            $result = json_decode($query, true);
            //print_r($result);
            $id_photo = $result[response][0]['photo_100'];
            $id_photo_400 = $result[response][0]['photo_400_orig'];
            $user_id = 122473456;
            $deactivated = $result['response'][0]['deactivated'];
            $first_name = $result['response'][0]['first_name'];
            $last_name = $result['response'][0]['last_name'];
            $bdate = $result['response'][0]['bdate'];
            $mobile_phone = $result['response'][0]['mobile_phone'];
            $political = $result['response'][0]['personal']['political'];
            $langs_massive = $result['response'][0]['personal']['langs'];
            $city = $result['response'][0]['city']['title'];
            $id = $result['response'][0]['id'];
            if ($deactivated) {
                continue;
            }
//Вывод карточек по фильтру
            else if ($first_name != $data_name) {
                continue;
            } else {
                echo "<style>pre{display:none;}</style>";
                echo "<div class='main_contact'>";
                if ($id_photo_400)
                    echo "<img class='img_cont' src='$id_photo_400'>";
                else
                    echo "<img class='img_cont' src='/img/no_ava.jpg'>";
                echo "<span class='span_cont'>";
                echo "<div>id:  $id </div>";
                echo "<div>Имя: <a target='_blank' href='https://vk.com/id$id'>$first_name</a></div>";
                echo "<div>Фамилия: $last_name</div>";
                echo "<div>Дата рождения: $bdate</div>";
                echo "<div>Город: $city</div>";
                echo "<div>Мобильный: $mobile_phone</div>";
                echo "<div>Политические взгляды: $political</div>";
                echo "<div>Языки:</div>";
                print_r($langs_massive);
                echo "</span>";
                echo "</div>";
            }
        }
    }

}
