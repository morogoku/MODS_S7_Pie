.class Lcom/android/systemui/statusbar/NotificationEntryManager$3$1;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/NotificationEntryManager$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$3$1;->this$1:Lcom/android/systemui/statusbar/NotificationEntryManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$3$1;->this$1:Lcom/android/systemui/statusbar/NotificationEntryManager$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHunDragCallbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationEntryManager$HunDragCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager$HunDragCallback;->onHunDragEnd(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$3$1;->this$1:Lcom/android/systemui/statusbar/NotificationEntryManager$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHunDragCallbackArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationEntryManager$HunDragCallback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager$HunDragCallback;->onHunDragStart()V

    goto :goto_0

    :cond_0
    return-void
.end method
