.class Landroidx/car/app/CarListDialog$1;
.super Ljava/lang/Object;
.source "CarListDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/CarListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/CarListDialog;


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Landroidx/car/app/CarListDialog$1;->this$0:Landroidx/car/app/CarListDialog;

    invoke-static {v0}, Landroidx/car/app/CarListDialog;->access$000(Landroidx/car/app/CarListDialog;)V

    iget-object v0, p0, Landroidx/car/app/CarListDialog$1;->this$0:Landroidx/car/app/CarListDialog;

    invoke-static {v0}, Landroidx/car/app/CarListDialog;->access$100(Landroidx/car/app/CarListDialog;)Landroidx/car/widget/PagedListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
