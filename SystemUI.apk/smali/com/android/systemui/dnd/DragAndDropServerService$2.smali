.class Lcom/android/systemui/dnd/DragAndDropServerService$2;
.super Ljava/lang/Object;
.source "DragAndDropServerService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dnd/DragAndDropServerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/DragAndDropServerService;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dnd/DragAndDropServerService$2;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    iput-object p2, p0, Lcom/android/systemui/dnd/DragAndDropServerService$2;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDraw$0(Lcom/android/systemui/dnd/DragAndDropServerService$2;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 3

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDraw : call onDragStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$2;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    iget-boolean v0, v0, Lcom/android/systemui/dnd/DragAndDropServerService;->mFirstFrameDrawn:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$2;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    iget-object v0, v0, Lcom/android/systemui/dnd/DragAndDropServerService;->mClientProxy:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onDragStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$2;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/dnd/DragAndDropServerService;->mFirstFrameDrawn:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$2;->val$decorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropServerService$2;->val$decorView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$2$Z3ZvCSWHoqYaTI9fE5M4N481MEI;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$2$Z3ZvCSWHoqYaTI9fE5M4N481MEI;-><init>(Lcom/android/systemui/dnd/DragAndDropServerService$2;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
