.class Landroidx/car/drawer/CarDrawerController$1;
.super Ljava/lang/Object;
.source "CarDrawerController.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/drawer/CarDrawerController;->setupDrawerToggling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/drawer/CarDrawerController;


# direct methods
.method constructor <init>(Landroidx/car/drawer/CarDrawerController;)V
    .locals 0

    iput-object p1, p0, Landroidx/car/drawer/CarDrawerController$1;->this$0:Landroidx/car/drawer/CarDrawerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController$1;->this$0:Landroidx/car/drawer/CarDrawerController;

    invoke-static {v0}, Landroidx/car/drawer/CarDrawerController;->access$000(Landroidx/car/drawer/CarDrawerController;)V

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController$1;->this$0:Landroidx/car/drawer/CarDrawerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/car/drawer/CarDrawerController;->scrollToPosition(I)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
