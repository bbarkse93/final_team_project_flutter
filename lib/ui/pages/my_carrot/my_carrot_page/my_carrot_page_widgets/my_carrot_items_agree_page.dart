import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class MyCarrotItemsAgreePage extends StatelessWidget {
  const MyCarrotItemsAgreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("서비스 이용약관"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "이용약관",
                  style: TextStyle(fontSize: fontXlarge),
                ),
                SizedBox(height: mediumGap),
                Text("안녕하세요?"),
                SizedBox(height: mediumGap),
                Text(
                    "(주)당근마켓(이하 “당근”이라고 합니다) 서비스를 이용해 주셔서 감사합니다. 지역 정보 모바일 서비스를 제공하는 당근이 아래 준비한 약관을 읽어주시면 감사드리겠습니다.?"),
                SizedBox(height: mediumGap),
                Text("계정관련"),
                SizedBox(height: smallGap),
                Text(
                    "당근은 모바일 서비스 특성상 별다른 비밀번호 없이 휴대전화 번호만으로 계정을 생성하실 수 있습니다. 다만, 실제 휴대전화의 소유주임을 확인하기 위해서 가입 당시 인증 절차를 거치게 됩니다. 또한, 다른 모바일 기기에서 서비스 사용을 연속하기 위해서는 기존에 가입하고 인증했던 휴대전화 번호로 재인증을 해야 합니다. 아래의 경우에는 계정 생성을 승인하지 않을 수 있습니다."),
                SizedBox(height: smallGap),
                Text("1.다른 사람의 명의나 휴대전화 번호 등 개인정보를 이용하여 계정을 생성하려 한 경우"),
                SizedBox(height: smallGap),
                Text("2.동일인이 다수의 계정을 생성하려 한 경우"),
                SizedBox(height: smallGap),
                Text("3.계정 생성시 필요한 정보를 입력하지 않거나 허위 정보를 입력한 경우"),
                SizedBox(height: smallGap),
                Text("4.당근이 과거에 운영원칙 또는 법률 위반 등의 정당한 사유로 해당 계정을 삭제 또는 징계한 경우"),
                SizedBox(height: smallGap),
                Text(
                    "5.사기 정보 모음 사이트나 정부기관 사이트 등에서 거래 사기 이력이 있는 휴대전화 번호로 확인된 경우"),
                SizedBox(height: smallGap),
                Text(
                    "계정은 본인만 이용할 수 있고, 다른 사람에게 이용을 허락하거나 양도할 수 없습니다. 사용자는 계정과 관련된 정보, 즉 프로필 사진이나 별명 등을 수정할 수 있습니다. 휴대폰 번호가 바뀐 경우에는 서비스 내 설정 메뉴나 고객센터 문의를 통해 새 휴대폰 번호로 인증절차를 걸쳐 수정할 수 있습니다."),
                SizedBox(height: mediumGap),
                Text("사용시 주의해야 할 점"),
                SizedBox(height: smallGap),
                Text(
                    "당근은 사용자가 아래와 같이 잘못된 방법이나 행위로 서비스를 이용할 경우 사용에 대한 제재(이용정지, 강제탈퇴 등)를 가할 수 있습니다."),
                SizedBox(height: smallGap),
                Text(
                    "1.잘못된 방법으로 서비스의 제공을 방해하거나 당근이 안내하는 방법 이외의 다른 방법을 사용하여 당근 서비스에 접근하는 행위"),
                SizedBox(height: smallGap),
                Text("2.다른 이용자의 정보를 무단으로 수집, 이용하거나 다른 사람들에게 제공하는 행위"),
                SizedBox(height: smallGap),
                Text("3.서비스를 영리나 홍보 목적으로 이용하는 행위"),
                SizedBox(height: smallGap),
                Text(
                    "4.음란 정보나 저작권 침해 정보 등 공서양속 및 법령에 위반되는 내용의 정보 등을 발송하거나 게시하는 행위"),
                SizedBox(height: smallGap),
                Text(
                    "5.당근의 동의 없이 당근 서비스 또는 이에 포함된 소프트웨어의 일부를 복사, 수정, 배포, 판매, 양도, 대여, 담보제공하거나 타인에게 그 이용을 허락하는 행위"),
                SizedBox(height: smallGap),
                Text(
                    "6.소프트웨어를 역설계하거나 소스 코드의 추출을 시도하는 등 당근 서비스를 복제, 분해 또는 모방하거나 기타 변형하는 행위"),
                SizedBox(height: smallGap),
                Text("7.관련 법령, 당근의 모든 약관 또는 을 준수하지 않는 행위"),
                SizedBox(height: mediumGap),
                Text("개인정보 보호 관련"),
                SizedBox(height: smallGap),
                Text(
                    "개인정보는 당근 서비스의 원활한 제공을 위하여 사용자가 동의한 목적과 범위 내에서만 이용됩니다. 개인정보 보호 관련 기타 상세한 사항은 당근 을 참고하시기 바랍니다."),
                SizedBox(height: mediumGap),
                Text("위치기반서비스 관련"),
                SizedBox(height: smallGap),
                Text(
                    "당근은 사용자의 실생활에 더욱 보탬이 되는 유용한 서비스를 제공하기 위하여 당근 서비스에 위치기반서비스를 포함시킬 수 있습니다. 당근의 위치기반서비스는 사용자의 단말기기의 위치정보를 수집하는 위치정보사업자로부터 위치정보를 전달받아 제공하는 무료서비스이며, 구체적으로는 사용자의 현재 위치를 기준으로 특정 지역커뮤니티에 가입자격을 부여하고 다른 이용자와 해당 지역과 관련된 게시물을 작성할 수 있도록 하는 서비스(지역커뮤니티서비스), 사용자의 현재 위치를 이용한 생활 정보나 광고성 정보를 제공하는 서비스(정보제공서비스)가 있습니다. 특히, 사용자가 14세 미만 이용자로서 개인위치정보를 활용한 위치기반 서비스를 이용하기 위해서는 당근은 사용자의 개인위치정보를 이용 또는 제공하게 되며, 이 경우 부모님 등 법정대리인의 동의가 먼저 있어야 합니다. 만약 법정대리인의 동의 없이 위치기반서비스가 이용된 것으로 판명된 때에는 당근은 즉시 사용자의 위치기반서비스 이용을 중단하는 등 적절한 제한을 할 수 있습니다."),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
