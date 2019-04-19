.class Landroidx/car/app/CarListDialog$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CarListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/CarListDialog;->initializeList()V
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

    iput-object p1, p0, Landroidx/car/app/CarListDialog$3;->this$0:Landroidx/car/app/CarListDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object v0, p0, Landroidx/car/app/CarListDialog$3;->this$0:Landroidx/car/app/CarListDialog;

    invoke-static {v0}, Landroidx/car/app/CarListDialog;->access$000(Landroidx/car/app/CarListDialog;)V

    return-void
.end method
