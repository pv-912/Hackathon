package com.example.nishant.auto_updater;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Switch;
import android.widget.TextView;

import java.util.ArrayList;

/**
 * Created by nishant on 22/9/17.
 */

public class Data_Adapter extends ArrayAdapter<Data_Professor> {

    private Activity context;
    private ArrayList<Data_Professor>data_professors;
    private int id;

    public Data_Adapter(@NonNull Activity context, @LayoutRes int resource, @NonNull ArrayList<Data_Professor> objects) {
        super(context, resource, objects);
        this.context=context;
        this.data_professors=objects;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {

         if(convertView==null){
             LayoutInflater inflater=context.getLayoutInflater();
             convertView=inflater.inflate(id,null);
         }

        TextView name_professor=convertView.findViewById(R.id.name_professor);
        Switch status_switch=convertView.findViewById(R.id.status_switch);

          return super.getView(position,convertView,parent);
    }
}
