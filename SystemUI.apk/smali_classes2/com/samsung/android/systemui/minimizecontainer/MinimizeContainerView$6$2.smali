.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$2;
.super Ljava/lang/Object;
.source "MinimizeContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$2;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6$2;->this$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->removeAllMinimizeTasks()V

    return-void
.end method
