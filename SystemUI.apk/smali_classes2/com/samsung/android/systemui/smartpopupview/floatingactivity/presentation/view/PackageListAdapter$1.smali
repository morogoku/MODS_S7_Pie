.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;
.super Ljava/lang/Object;
.source "PackageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

.field final synthetic val$item:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

.field final synthetic val$viewHolder:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;->val$item:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    iput-object p3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;->val$viewHolder:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    iget-object v1, v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->onItemClickListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$OnItemClickListener;

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;->val$item:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    invoke-interface {v1, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$OnItemClickListener;->onUserItemClicked(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;->val$item:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;->val$viewHolder:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;

    iget-object v1, v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;->val$viewHolder:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;

    iget-object v0, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    :goto_0
    return v2
.end method
