.class Lcom/android/server/wm/CustomStartingWindowController$1;
.super Ljava/lang/Object;
.source "CustomStartingWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/CustomStartingWindowController;->clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/CustomStartingWindowController;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/CustomStartingWindowController$1;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    iput-object p2, p0, Lcom/android/server/wm/CustomStartingWindowController$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$1;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowDataMaps:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/wm/CustomStartingWindowController;->access$000(Lcom/android/server/wm/CustomStartingWindowController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowController$1;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    iget-object v3, p0, Lcom/android/server/wm/CustomStartingWindowController$1;->val$packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/wm/CustomStartingWindowController;->clearCustomStartingWindowData(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/wm/CustomStartingWindowController;->access$100(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;I)V

    goto :goto_e

    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/CustomStartingWindowController$1;->this$0:Lcom/android/server/wm/CustomStartingWindowController;

    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowController$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CustomStartingWindowController;->removeRequestedContentViewResId(Ljava/lang/String;)V

    return-void
.end method
