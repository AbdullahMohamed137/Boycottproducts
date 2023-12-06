package com.example.boycottproducts;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.snackbar.Snackbar;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class CustomAdapter extends BaseAdapter {
    private List<Product> productList;
    private LayoutInflater inflater;

    public void setFilteredList(List<Product>filteredList){
        this.productList = filteredList;
        notifyDataSetChanged();
    }

    public CustomAdapter(Context context, List<Product>productList){
        this.productList = productList;
        inflater = LayoutInflater.from(context);
    }

    @Override
    public int getCount() {
        return productList.size();
    }

    @Override
    public Object getItem(int i) {
        return productList.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder holder;
        if (view == null){
            view = inflater.inflate(R.layout.list_item_view,viewGroup,false);
            holder = new ViewHolder();
            holder.nameProduct = view.findViewById(R.id.item_name);
            holder.imageProduct = view.findViewById(R.id.item_image);
            holder.withOrNo = view.findViewById(R.id.withUs);
            holder.categories = view.findViewById(R.id.categories);
            view.setTag(holder);
        }else {
            holder = (ViewHolder) view.getTag();
        }
        Product product = productList.get(i);
        holder.nameProduct.setText(product.getName());
        holder.categories.setText(product.getCategories());
        byte[] imageByteArray = {};
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            imageByteArray = Base64.getDecoder().decode(product.getImages());
        }
        Bitmap imageBitMap = BitmapFactory.decodeByteArray(imageByteArray,0,imageByteArray.length);
        holder.imageProduct.setImageBitmap(imageBitMap);

        if (product.getIsWithUs()=="false"){
            holder.withOrNo.setText("مقاطعة \uD83D\uDE21");
            holder.withOrNo.setTextColor(Color.RED);
            view.setBackgroundColor(Color.LTGRAY);
        }else {
            holder.withOrNo.setText("معانا يا معلم \uD83E\uDEE1");
            holder.withOrNo.setTextColor(Color.GREEN);
            view.setBackgroundColor(Color.WHITE);
        }
        return view;
    }

    private static class ViewHolder{
        TextView nameProduct;
        ImageView imageProduct;

        TextView withOrNo;
        TextView categories;
    }
}
