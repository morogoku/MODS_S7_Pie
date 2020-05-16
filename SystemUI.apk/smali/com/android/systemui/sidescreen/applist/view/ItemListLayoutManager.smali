.class public Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "ItemListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;
    }
.end annotation


# static fields
.field private static sAttr:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;


# instance fields
.field mContext:Landroid/content/Context;

.field mView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sidescreen/applist/view/ItemListView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;->mView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    return-void
.end method

.method public static getAttr(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;
    .locals 1

    sget-object v0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;->sAttr:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;->sAttr:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;

    :cond_0
    sget-object v0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;->sAttr:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager$Attributes;

    return-object v0
.end method
