.class Lcom/android/systemui/shared/dnd/DragAndDropHelper$2$1;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2$1;->this$1:Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    sget-object v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2$1;->this$1:Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;

    iget-object v0, v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$300(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)V

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2$1;->this$1:Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;

    iget-object v0, v0, Lcom/android/systemui/shared/dnd/DragAndDropHelper$2;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->access$100(Lcom/android/systemui/shared/dnd/DragAndDropHelper;)Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;->onDragEnd(I)V

    return-void
.end method
