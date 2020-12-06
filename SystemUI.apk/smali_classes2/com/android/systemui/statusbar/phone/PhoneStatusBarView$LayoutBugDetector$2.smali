.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetectorInterface;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetectorInterface;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetectorInterface;->requestLayoutToFixLayoutBug()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method
