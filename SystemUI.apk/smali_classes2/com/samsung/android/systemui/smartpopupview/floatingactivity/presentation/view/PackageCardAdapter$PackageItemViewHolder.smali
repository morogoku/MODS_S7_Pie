.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PackageCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageItemViewHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field cardView:Landroid/support/v7/widget/CardView;

.field checkBox:Landroid/widget/CheckBox;

.field linearLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00e3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;->cardView:Landroid/support/v7/widget/CardView;

    const p1, 0x7f0a023e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a02e4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    const p1, 0x7f0a00e2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;->appIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a00e1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$PackageItemViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method
