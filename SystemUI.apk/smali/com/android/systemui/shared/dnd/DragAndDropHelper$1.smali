.class Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;
.super Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;
.source "DragAndDropHelper.java"


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

    iput-object p1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDragEnd$1(Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$100(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;->onDragEnd(I)V

    return-void
.end method

.method public static synthetic lambda$onDragStart$0(Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$100(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;->onDragStart()V

    return-void
.end method


# virtual methods
.method public onDragEnd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$000(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$Fk3hEsgOV4p0TnYFMZaraV_22Pc;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$Fk3hEsgOV4p0TnYFMZaraV_22Pc;-><init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$000(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$U6DaJNDCj_o1wCMP3ax93luwKcc;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$U6DaJNDCj_o1wCMP3ax93luwKcc;-><init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
