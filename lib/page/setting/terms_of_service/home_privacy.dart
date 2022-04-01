import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miroru_web/config/color.dart';
import 'package:miroru_web/config/text_style.dart';
import 'package:miroru_web/page/setting/terms_of_service/terms_of_service_page.dart';

class HomPrivacy extends StatelessWidget {
  const HomPrivacy({Key? key}) : super(key: key);
  static const String route = '/privacy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'プライバシーポリシー',
          style: TextStyle(
            color: blackColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.3,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'プライバシポリシー',
                style: h1text,
              ),
              Text(
                'miroru（以下「当社」といいます。）はソーシャル・ネットワーキング・サービス「miroru」（以下「本サービス」といいます。）の提供にあたり、個人情報保護に関する法規範を遵守し、以下に定めるプライバシーポリシー（以下「本ポリシー」といいます。）に基づき、個人情報等の適切な取得、利用、保存、提供等を行います。なお、本ポリシーにおける用語は、特別の断りなき限り「miroru」利用規約のとおりとします。このページは、ユーザーが本サービスを使用することを決定した場合に、個人情報の収集、 使用、および開示に関する私たちのポリシーについてユーザーに周知するために使用されます。',
                style: h4text,
              ),
              Text(
                '1.取得する情報',
                style: h2text,
              ),
              Text(
                '''当社は、本サービスに関して、以下の情報を含むユーザーの情報を取得する場合があり、これらの情報には個人情報が含まれることがあります。miroruでは、個人情報とは、個人情報の保護に関する法律に規定される生存する個人に関する情報 （氏名、年齢、性別)を取得します。''',
                style: h4text,
              ),
              Text(
                '2.取得した情報の目的',
                style: h2text,
              ),
              nH4Widget(number: 1, text: '''ユーザー同士が本サービスまたは本アプリでお互いを認識するため。
'''),
              nH4Widget(
                  number: 2,
                  text:
                      '''本サービスまたは本アプリにおいて、どのユーザーがコンテンツを投稿したり、コンテンツを作成したりしているか等を分かるようにするため。'''),
              nH4Widget(
                  number: 3,
                  text:
                      '''本サービスまたは本アプリに掲載するコンテンツ、広告、マーケティング活動等を個別のユーザー向けに最適化するため。'''),
              nH4Widget(
                  number: 4,
                  text:
                      '''本サービスまたは本アプリ、新しいサービス、広告やマーケティング活動等に関するアンケートを実施したり、参加者を募集したりするため。'''),
              nH4Widget(
                  number: 5,
                  text:
                      '''ユーザーによる本サービスまたは本アプリの利用状況等を分析、解析、統計化等し、既存サービスの改善や新規サービスの企画、検討、開発をするため。'''),
              nH4Widget(
                  number: 6,
                  text:
                      '''本サービスまたは本アプリ、新しいサービスに関する情報配信を行ったり、ユーザーからの問い合せに対応したりするため。'''),
              nH4Widget(
                  number: 7,
                  text:
                      '''本サービスまたは本アプリに関する利用規約や本ポリシー等（以下「利用規約等」といいます。）に違反する行為へ対応するため。'''),
              nH4Widget(
                  number: 8, text: '''本サービスや本アプリに関する利用規約等の変更などを通知するため。'''),
              nH4Widget(
                  number: 9, text: '''前 各号のほか、本サービスまたは本アプリに付帯関連する目的のため。'''),
              Text(
                '3.第三者への提供',
                style: h2text,
              ),
              nH4Widget(number: 1, text: '''当社は、以下に定める場合、ユーザー情報を第三者に提供します。'''),
              nnH4Widget(number: 1, nn: 1, text: '''ユーザーから同意を得た場合。'''),
              nnH4Widget(number: 1, nn: 2, text: '''法令に基づく場合。'''),
              nnH4Widget(
                  number: 1,
                  nn: 3,
                  text:
                      '''人の生命、身体又は財産の保護のために必要がある場合であって、本人の同意を得ることが困難である場合 。'''),
              nnH4Widget(
                  number: 1, nn: 4, text: '''事業譲渡等によって当社の事業の承継が行われる場合'''),
              nH4Widget(number: 2, text: '''前項のほか、以下の場合はこの限りではありません。'''),
              nnH4Widget(
                  number: 2, nn: 1, text: '''統計的なデータなど個人を識別できない状態で開示・提供する場合'''),
              nnH4Widget(
                  number: 2,
                  nn: 2,
                  text:
                      '''1.で定める利用目的で第三者に業務委託する場合。この場合、当社は、ユーザー情報の委託にかかわる契約を締結し、委託先の第三者への必要かつ適切な監督を行います。'''),
              Text(
                '4.ユーザー情報の開示等',
                style: h2text,
              ),
              Text(
                '当社は、ユーザーから個人情報の開示、内容の訂正、追加、削除、利用の停止、利用目的の通知、消去及び第三者への提供の停止（以下「開示等」といいます。）の請求があった場合、当社が別途指定する方法でユーザーの本人確認を行った上で、遅滞なく対応します。ただし、法令上、当社が開示等の義務を負わない場合、当社は、当社の判断により、開示等を行わないことができるものとします。',
                style: h4text,
              ),
              Text(
                '5.他のサイトへのリンク等',
                style: h2text,
              ),
              Text(
                'このサービスには、他のサイトへのリンクが含まれている場合があります。サードパーティのリンクをクリックすると、そのサイト に移動します。これらの外部サイトは私たちによって運営されていないことに注意してください。したがって、私たちは、これらのWebサイトのプライバシーポリシーを確認することを強くお勧めします。私たちは、サーパーティのサイトまたはサービスのコンテンツ、 プライバシーポリシー、または慣行を管理することはできず、責任を負わないものとします。',
                style: h4text,
              ),
              Text(
                '6.個人情報の開示・訂正・削除',
                style: h2text,
              ),
              Text(
                '当社は、お客様本人から自己の個人情報について開示・訂正・削除の請求がある場合、合理的な範囲で速やかにこれらの請求に対応します。ただし、以下の場合はこの限りではありません。',
                style: h4text,
              ),
              nH4Widget(number: 1, text: '''公的証明書等により本人であることが確認できない場合。'''),
              nH4Widget(number: 2, text: '''当社の業務の実施に著しい支障を及ぼすおそれのある場合。'''),
              Text(
                '7.本ポリシーの変更',
                style: h2text,
              ),
              Text(
                '''当社は、必要に応じて本プライバシーポリシーを改定することがあります。ただし、法令上ユーザーの同意が必要となる改定をした場合、改定後のプライバシーポリシーは、当社所定の方法で改定に同意したユーザーに対してのみ適用されます。改定した場合には、当社ウェブサイト上での掲示その他ユーザーの皆様に分かりやすい方法で改定を周知します。''',
                style: h4text,
              ),
              Text(
                '8.お問い合わせ',
                style: h2text,
              ),
              Text(
                '''本プライバシーポリシーに関するお問い合せは、本サービスまたは当社が運営するウェブサイト内の適宜の場所に設置するお問合せフォームの送信または当社が指定する方法により行っていただきます。''',
                style: h4text,
              ),
              SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '改訂日：2022年4月1日',
                    textAlign: TextAlign.end,
                    style: h4text,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
