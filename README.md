# digital_desing_with_fpga_final_project
ultra sonic radar sistemi
1-Giriş
Proje kapsamında istenilen fonksiyo-nellik olan ultrasonik radar; çalışma prensibi olarak ultrasonic sensör üze-rinden(trig pini) gönderilen siyanlin engele çarptıktan sonra geri dönüş sinyalini algılayan ve geliştirme kar-tına bir pin ile (echo pini) ileterek kart üzerinde bu gönderilen sinyanlin gidiş dönüş süresinden mesafesini hesaplayıp yakındaki bir engelin varlığını ve uzaklığını hesaplayan bir sistemdir.
2-PROJE KAPSAMINDA YAPILAN ÇALIŞMALAR
Proje kapsamında ultarasonik sensöre gönderilen sinyalin geri dönüş yanıtı-na göre engel ile sistem arasındaki mesafe binary den santimetre cinsine çevirelirek yorumlanması yapılacak-tır. Sonrasında okunan değere göre VGA kullanılarak monitörde uzaklığa göre renk değişikliği yapılacaktır. Servo motor kullanılarak ultrasonic sensör modülü 120 derecelik açıda döndürülerek 120 derecelik alan taranmış olacaktır. Servo motorun kontrol kartının PCB tasarımı Altium üzerinden yapılacaktır. Bu projenin yapım aşaması sonraki bölümlerde açık-lanacaktır.
2.1 Projenin Şematiği ve Ça-lışma Prensibi:
Projenin çalışma prensibi fpga üze-rinde Verilog dilinde yazılan kod ile sinyal üretilip (trig sinyali) bu sinyal ultrasonik sensöre gönderilir. Ultra-sonik sensör bu sinyal ile dış dünyaya sonik dalga üretir ve engele çarpıp yansıyan bu dalgayı algılayarak fpga echo pini üzerinden yanıt gönderir. Fpga aldığı bu yanıtı gönderilen sinyalden ne kadar süre sonra geldiğine bağlı olarak mesafeyi hesaplar. Burada hesaplanan değere göre de fpga’nın  VGA  pinlerine farklı RGB kodları gönderilir. Bu sayede fraklı uzaklıklara göre monitörde farlı RGB kodları uygulayarak farklı renkler ekrana bastırılıcaktır.
 2.2-Projede Kullanılan Mo-düllerin Çalışma Prensibi:
2.2.1 HC-SR04 ultrasonic sen-sor:

 
Şekil 2.1.1 HC-SR04 ultrasik sensör

HC-SR04 ses dalgalarını kullanarak mesafe ölçmeye yarayan bir modül-dür. Toplamda üzerinde4 adet pin vardır. Bunlar GND, VCC, trig ve
echo pinleridir. Trig pini ses dalgası-nın göndermesiiçin gerekli olan lojik sinyalin geldiği giriş pinidir. Echo pini ise gönderilen ses dalgasının yansıma yanıtının sesöre ulaştığının bilgisini taşıyan lojik çıkış pinidir. Sensör gönderilen ses dalgasının geri dönü süresinin bilgisini verir. Bu sayede aradaki mesafede hesaplanabilir. 2-400cm arasında ölçümü 3mm hassasiyetle ölçebilmektedir.

 Şekil 2.1.2 HC-SR04 UltrasonikSensörÇa-lışma Şekli

 
Şekil 2.1.3 Trig pininden pals gönderilmesi durumunda sensörün çalışma şekli

2.2.2 Lojik Seviye Dönüştürü-cü: 
 
Şekil 2.1.4 lojik seviye dönüştürcü
Basys 3 Fpga 3.3V ile çalışır ve ultrasonik sensör modülü 5V ile çalıştığı için fpga ile üretilen lojik sinyalin 5V seviyesinde iletilmesi gerekmektedir ve tam tersi durumda yani sensörün yanıtınında 5V ‘tan 3.3V’a düşürülmesi gerekir. Bunun için lojik seviye dönüştürücü kullanılmak-tadır. 
 
Şekil 2.1.5 trig sinyalinin 3.3V-5V dönü-şümü

2.2.3 Servo Motor:
 
Şekil 2.1.6 servo motor

Servo motorun 3 adet pini bulunmaktadır. Bunlar ; VCC GND ve üretilen pwm sinyalinin gönderildiği pindir. Servo mo-torlar pwm sinyali ile çalışır. servo motor 20ms bir değer okumaktadır. Bu değerin uzunluğu motorun dönüş yönünü ve açısını belirlemektedir.
  Şekil 2.1.7 servo motor örnek pulse değerlerine göre açılar
2.2.4 VGA modülü:
Vga bir bilgisayar ve video arayüzüdür. 15 adet pine sahiptir. Bunlar 12’si RGB 1’i yatay senkronizayyon 1’ dikey senk-ronizasyondur. Yatay ve dikey senkron-lama hangi piksel üzerine renk bastırla-cağı bilgisini taşır. Yani dikey  senkron pini yatay sekron pini yatayda en son pisele ulaşınca bi alt piksel satırına geç-mesini sağlayan pinlerdir. RGB pinleri ise RGB renk kodlarını taşıyarak istenilen piksele bastırılacak olan renk bilgisini belirler.
 
Şekil 2.1.8 örnek RGB renk kodları
2.3-Altium  çizimleri
Projede kullanılacak olan servo motor için kontrol kartı olarak pmod CON3 seçilmiştir. Bu modülün pcb tasarımı yapılmıştır.
 
Şekil 2.3.1 pmod con3 altium şematiği
 
Şekil 2.3.1 pmod con3 altium PCB çizim

3-Sonuç
Projede istenilen pcb tasarımı yapılmıştır. Projede ultrasonik sensörden gelen değer elde edilememiştir. Verilog dilinde üreti-len trig sinyalini ultrasonik sensöre gön-derilememiştir. Hatanın sebebi anlaşıla-mamıştır. Fraklı şekllerde yazılan kodlar-la denenmesine rağmen sensörden değer okunamamıştır. VGA ile ekranda renk basılması fonsiyonelliği gerçeklenmiştir. Servo motor kontrolü gerçeklenmiştir. Fakat sensörden değer okunamadığı için VGA kontrolü uzaklığa göre yapılama-mıştır. 
