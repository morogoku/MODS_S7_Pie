.class public interface abstract Landroidx/slice/builders/impl/ListBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;,
        Landroidx/slice/builders/impl/ListBuilder$RowBuilder;,
        Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;,
        Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;
    }
.end annotation


# virtual methods
.method public abstract addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method
