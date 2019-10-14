.class Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/dnd/DragAndDropHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    sget-object v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$200(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$300(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$100(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;->onDragEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$300(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2$1;-><init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;)V

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {p2}, Lcom/samsung/android/multiwindow/IDragAndDropServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$402(Lcom/android/systemui/shared/dnd/DragAndDropHelper;Lcom/samsung/android/multiwindow/IDragAndDropServer;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$400(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v1}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$500(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v2}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$600(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v3}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$700(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v4}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$800(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/IDragAndDropServer;->bind(Landroid/os/IBinder;Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$400(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IDragAndDropServer;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$300(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V

    nop

    return-void

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v1}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$300(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
