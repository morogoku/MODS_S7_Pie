.class Landroidx/car/app/CarListDialog$2;
.super Landroidx/car/widget/PagedListView$OnScrollListener;
.source "CarListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/CarListDialog;->initializeTitleElevationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/CarListDialog;


# direct methods
.method constructor <init>(Landroidx/car/app/CarListDialog;)V
    .locals 0

    iput-object p1, p0, Landroidx/car/app/CarListDialog$2;->this$0:Landroidx/car/app/CarListDialog;

    invoke-direct {p0}, Landroidx/car/widget/PagedListView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/car/widget/PagedListView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    nop

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/car/app/CarListDialog$2;->this$0:Landroidx/car/app/CarListDialog;

    invoke-static {v1}, Landroidx/car/app/CarListDialog;->access$700(Landroidx/car/app/CarListDialog;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/car/app/CarListDialog$2;->this$0:Landroidx/car/app/CarListDialog;

    invoke-static {v1}, Landroidx/car/app/CarListDialog;->access$900(Landroidx/car/app/CarListDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/CarListDialog$2;->this$0:Landroidx/car/app/CarListDialog;

    invoke-static {v2}, Landroidx/car/app/CarListDialog;->access$800(Landroidx/car/app/CarListDialog;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setElevation(F)V

    :goto_0
    return-void
.end method
