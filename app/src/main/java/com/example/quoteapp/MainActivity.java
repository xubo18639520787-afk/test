package com.example.quoteapp;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Random;

public class MainActivity extends AppCompatActivity {

    private TextView quoteTextView;
    private Button newQuoteButton;
    private String[] quotes = {
            "千里之行，始于足下。",
            "书山有路勤为径，学海无涯苦作舟。",
            "宝剑锋从磨砺出，梅花香自苦寒来。",
            "路漫漫其修远兮，吾将上下而求索。",
            "山重水复疑无路，柳暗花明又一村。",
            "不积跬步无以至千里，不积小流无以成江海。",
            "天行健，君子以自强不息。",
            "有志者，事竟成。",
            "业精于勤，荒于嬉；行成于思，毁于随。",
            "少壮不努力，老大徒伤悲。"
    };
    private Random random = new Random();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        quoteTextView = findViewById(R.id.quoteTextView);
        newQuoteButton = findViewById(R.id.newQuoteButton);

        newQuoteButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showRandomQuote();
            }
        });

        // 显示第一条名言
        showRandomQuote();
    }

    private void showRandomQuote() {
        int randomIndex = random.nextInt(quotes.length);
        quoteTextView.setText(quotes[randomIndex]);
    }
}