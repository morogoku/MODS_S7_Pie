.class Landroidx/car/app/CarListDialog$4;
.super Ljava/lang/Object;
.source "CarListDialog.java"

# interfaces
.implements Landroidx/car/widget/PagedScrollBarView$PaginationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/CarListDialog;->initializeScrollbar()V
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

    iput-object p1, p0, Landroidx/car/app/CarListDialog$4;->this$0:Landroidx/car/app/CarListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaJump()V
    .locals 0

    return-void
.end method

.method public onPaginate(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "CarListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown pagination direction ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/car/app/CarListDialog$4;->this$0:Landroidx/car/app/CarListDialog;

    invoke-static {v0}, Landroidx/car/app/CarListDialog;->access$100(Landroidx/car/app/CarListDialog;)Landroidx/car/widget/PagedListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->pageDown()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroidx/car/app/CarListDialog$4;->this$0:Landroidx/car/app/CarListDialog;

    invoke-static {v0}, Landroidx/car/app/CarListDialog;->access$100(Landroidx/car/app/CarListDialog;)Landroidx/car/widget/PagedListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->pageUp()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
