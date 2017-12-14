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

public class ProfessorRecyclerAdapter extends RecyclerView.Adapter<ProfessorRecyclerAdapter.MyViewHolder> {

    private List<ProfessorList> professorLists;

    public class MyViewHolder extends RecyclerView.ViewHolder{
        public TextView professor_name,professor_status;
        public MyViewHolder(View view) {
            super(view);
            professor_name=view.findViewById(R.id.professor_name);
            professor_status=view.findViewById(R.id.professor_status);
        }
    }

    public  ProfessorRecyclerAdapter( List<ProfessorList> professorLists)
    {this.professorLists=professorLists;}


    @Override
    public ProfessorRecyclerAdapter.MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.professor_list, parent, false);

        return new ProfessorRecyclerAdapter.MyViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(ProfessorRecyclerAdapter.MyViewHolder holder, int position) {
        ProfessorList professorList = professorLists.get(position);
        holder.professor_name.setText(professorList.getProfessor_name());
        holder.professor_status.setText(professorList.getProfessor_status());
    }

    @Override
    public int getItemCount() {
        return professorLists.size();
    }

}
