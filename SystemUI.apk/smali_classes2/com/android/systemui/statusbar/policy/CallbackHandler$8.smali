.class Lcom/android/systemui/statusbar/policy/CallbackHandler$8;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIcon:I

.field final synthetic val$icon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$icon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$activityIcon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->access$000(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$icon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$activityIcon:I

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
