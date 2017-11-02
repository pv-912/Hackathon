package com.example.nishant.local_updater;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.webkit.WebView;

public class MainActivity extends AppCompatActivity {

    private static final String URL_TO_LOAD = "https://c451f437.ngrok.io/table.php";
    private static final String LOCAL_RESOURCE = "https://c451f437.ngrok.io/table.php";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        WebView web_browser=(WebView)findViewById(R.id.web_browser);
        loadResource(web_browser, URL_TO_LOAD);
    }

    private void loadResource(WebView web_browser, String resource) {
        web_browser.loadUrl(resource);
        web_browser.getSettings().setJavaScriptEnabled(true);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu){
        MenuInflater menuInflater=getMenuInflater();
        menuInflater.inflate(R.menu.main,menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int itemThatWasClickedId = item.getItemId();
        WebView web_browser=(WebView)findViewById(R.id.web_browser);
        if (itemThatWasClickedId == R.id.action_refresh) {
             web_browser.reload();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

}
