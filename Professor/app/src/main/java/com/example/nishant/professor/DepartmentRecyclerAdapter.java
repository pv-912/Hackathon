package com.example.nishant.professor;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.List;

/**
 * Created by nishant on 12/12/17.
 */

public class DepartmentRecyclerAdapter extends RecyclerView.Adapter<DepartmentRecyclerAdapter.MyViewHolder> {

    private List<DepartmentList> departmentLists;

    public class MyViewHolder extends RecyclerView.ViewHolder{
        public TextView department_name;
        public MyViewHolder(View view) {
            super(view);
           department_name=view.findViewById(R.id.department_name);
        }
    }

    public  DepartmentRecyclerAdapter( List<DepartmentList> departmentLists)
    {this.departmentLists=departmentLists;}


    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.department_list, parent, false);

        return new MyViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {
        DepartmentList departmentList = departmentLists.get(position);
        holder.department_name.setText(departmentList.getDepartment_name());
    }

    @Override
    public int getItemCount() {
        return departmentLists.size();
    }


}
