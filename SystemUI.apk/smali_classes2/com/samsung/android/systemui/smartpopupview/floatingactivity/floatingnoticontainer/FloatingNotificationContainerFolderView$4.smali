.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView$4;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "FloatingNotificationContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;->animateToReturnDraggingAppIconView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;->access$2702(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;->access$2600(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    move-result-object v0

    const-string v1, "FloatingNotificationContainerFolderView"

    const-string v2, "onSpringAtRest of springY, releaseDraggingState"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;)V

    :cond_0
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;->access$2400(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerFolderView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
