.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$2;
.super Ljava/lang/Object;
.source "MinimizeContainerTrashBoxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->throwTrashAway(Landroid/view/View;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->access$602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
