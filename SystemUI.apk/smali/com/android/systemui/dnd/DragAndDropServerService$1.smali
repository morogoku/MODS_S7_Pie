.class Lcom/android/systemui/dnd/DragAndDropServerService$1;
.super Lcom/samsung/android/multiwindow/IDragAndDropServer$Stub;
.source "DragAndDropServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dnd/DragAndDropServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/DragAndDropServerService;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/DragAndDropServerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDragAndDropServer$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$bind$0(Lcom/android/systemui/dnd/DragAndDropServerService$1;Landroid/graphics/Bitmap;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    iget-object v0, v0, Lcom/android/systemui/dnd/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/DragAndDropWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/dnd/DragAndDropWindow;->bind(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public static synthetic lambda$hide$2(Lcom/android/systemui/dnd/DragAndDropServerService$1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    iget-object v0, v0, Lcom/android/systemui/dnd/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/DragAndDropWindow;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/DragAndDropWindow;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$show$1(Lcom/android/systemui/dnd/DragAndDropServerService$1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    iget-object v0, v0, Lcom/android/systemui/dnd/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/DragAndDropWindow;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/DragAndDropWindow;->show()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/os/IBinder;Landroid/graphics/Bitmap;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string v1, "bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/dnd/DragAndDropServerService$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dnd/DragAndDropServerService$1$1;-><init>(Lcom/android/systemui/dnd/DragAndDropServerService$1;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dnd/DragAndDropServerService;->mClientProxy:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    invoke-static {v0}, Lcom/android/systemui/dnd/DragAndDropServerService;->access$000(Lcom/android/systemui/dnd/DragAndDropServerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$2QhFpHbHzEJsmCcJRGF74rV8qgg;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$2QhFpHbHzEJsmCcJRGF74rV8qgg;-><init>(Lcom/android/systemui/dnd/DragAndDropServerService$1;Landroid/graphics/Bitmap;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hide()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    invoke-static {v0}, Lcom/android/systemui/dnd/DragAndDropServerService;->access$000(Lcom/android/systemui/dnd/DragAndDropServerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$0eqreUxZzOUlUkX2ybpUVnZRGcE;

    invoke-direct {v1, p0}, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$0eqreUxZzOUlUkX2ybpUVnZRGcE;-><init>(Lcom/android/systemui/dnd/DragAndDropServerService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/DragAndDropServerService;

    invoke-static {v0}, Lcom/android/systemui/dnd/DragAndDropServerService;->access$000(Lcom/android/systemui/dnd/DragAndDropServerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$cBW_WUCI4mrLLTajITQ0tMwNqt4;

    invoke-direct {v1, p0}, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$cBW_WUCI4mrLLTajITQ0tMwNqt4;-><init>(Lcom/android/systemui/dnd/DragAndDropServerService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
