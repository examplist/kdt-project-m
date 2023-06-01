package dto;

import java.util.HashMap;

public class CategoryDTO {
	public static final String[] CATEGORIES = { "top", "bottom", "cap", "shoes", "acc" };
	public static final HashMap<String, String> CATEGORY_TO_NAME = new HashMap<>();
	static {
		CATEGORY_TO_NAME.put("top", "상의");
		CATEGORY_TO_NAME.put("bottom", "하의");
		CATEGORY_TO_NAME.put("cap", "모자");
		CATEGORY_TO_NAME.put("shoes", "신발");
		CATEGORY_TO_NAME.put("acc", "액세서리");
	}
	public static final int HIGH_RANKED_LIMIT = 4;
	public static final HashMap<String, String[]> SLIDE_MESSAGE = new HashMap<>();
	static {
		String[] msgTop = { "멋진 상의!", "이제부터 멋과 편안함을 누려보세요!" };
		String[] msgBottom = { "물빠진 청바지!", "이제 막 도착한 신상 청바지를 구경해 보세요!" };
		String[] msgCap = { "편안하면서도 세련된 모자들!", "이 모자를 착용하면 당신의 멋짐이 드러날 것입니다!" };
		String[] msgShoes = { "화려한 색상의 신발들!", "당신 패션의 마침표로 이 신발을 선물합니다!" };
		String[] msgAcc = { "아름다운 반지!", "당신을 빛낼 아름다운 반지가 준비되어 있습니다!" };
		SLIDE_MESSAGE.put("top", msgTop);
		SLIDE_MESSAGE.put("bottom", msgBottom);
		SLIDE_MESSAGE.put("cap", msgCap);
		SLIDE_MESSAGE.put("shoes", msgShoes);
		SLIDE_MESSAGE.put("acc", msgAcc);
	}
}
