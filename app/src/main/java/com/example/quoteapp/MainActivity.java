package com.example.quoteapp;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.button.MaterialButton;

import java.util.Random;

public class MainActivity extends AppCompatActivity {

    private TextView quoteTextView;
    private MaterialButton newQuoteButton;
    private Random random = new Random();

    // 扩展名言数组，包含更多名言和诗句
    private String[] quotes = {
            "书山有路勤为径，学海无涯苦作舟。——韩愈",
            "山重水复疑无路，柳暗花明又一村。——陆游《游山西村》",
            "海内存知己，天涯若比邻。——王勃《送杜少府之任蜀州》",
            "欲穷千里目，更上一层楼。——王之涣《登鹳雀楼》",
            "长风破浪会有时，直挂云帆济沧海。——李白《行路难》",
            "成功的秘诀在于坚持自己的目标和信念。——爱迪生",
            "生活就像骑自行车，想保持平衡就得往前走。——爱因斯坦",
            "人生最大的荣耀不在于从不跌倒，而在于每次跌倒后都能爬起来。——孔子",
            "宝剑锋从磨砺出，梅花香自苦寒来。——《警世贤文》",
            "春蚕到死丝方尽，蜡炬成灰泪始干。——李商隐《无题》",
            "千磨万击还坚劲，任尔东西南北风。——郑燮《竹石》",
            "不积跬步，无以至千里；不积小流，无以成江海。——荀子《劝学》",
            "成功的秘诀，在永不改变既定的目的。——卢梭",
            "生活不止眼前的苟且，还有诗和远方。——高晓松",
            "采菊东篱下，悠然见南山。——陶渊明《饮酒》",
            "会当凌绝顶，一览众山小。——杜甫《望岳》",
            "天行健，君子以自强不息。——《周易》",
            "路漫漫其修远兮，吾将上下而求索。——屈原《离骚》",
            "莫愁前路无知己，天下谁人不识君。——高适《别董大》",
            "落红不是无情物，化作春泥更护花。——龚自珍《己亥杂诗》"
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        quoteTextView = findViewById(R.id.quoteTextView);
        newQuoteButton = findViewById(R.id.newQuoteButton);

        // 显示第一条名言
        showRandomQuote();

        // 为按钮设置点击事件
        newQuoteButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showRandomQuote();
            }
        });
    }

    private void showRandomQuote() {
        int randomIndex = random.nextInt(quotes.length);
        quoteTextView.setText(quotes[randomIndex]);
    }
}