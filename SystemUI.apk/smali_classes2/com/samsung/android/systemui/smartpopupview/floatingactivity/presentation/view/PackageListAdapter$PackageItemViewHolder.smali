.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageItemViewHolder"
.end annotation


# instance fields
.field appCustomDivider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/DrawerDividerView;

.field appDivider:Landroid/view/View;

.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field appSwitch:Landroid/widget/Switch;

.field relativeLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0063

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a015d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a015e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appName:Landroid/widget/TextView;

    const p1, 0x7f0a015f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a015b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appDivider:Landroid/view/View;

    const p1, 0x7f0a015c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/DrawerDividerView;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appCustomDivider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/DrawerDividerView;

    return-void
.end method
