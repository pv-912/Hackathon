package com.example.nishant.auto_updater;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Switch;
import android.widget.TextView;

import static android.R.attr.name;

public class MainActivity extends AppCompatActivity {

    private ListView list_professor;
    private TextView name_professor;
    private Switch status_switch;
    private Context context;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        name_professor=(TextView)findViewById(R.id.name_professor);

        list_professor=(ListView)findViewById(R.id.list_professor);

        status_switch =(Switch)findViewById(R.id.status_switch);

        Data_Professor data_professor =new Data_Professor();

         String[] professor_name=data_professor.getName();

        ArrayAdapter<String> arrayAdapter_string=new ArrayAdapter<String>(context,R.layout.list_item,R.id.name_professor,professor_name);

        list_professor.setAdapter(arrayAdapter_string);

    }
}
