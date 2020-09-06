.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

.field final synthetic val$lockObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "smsBlockHandler"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v3

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v3

    :cond_1c
    :goto_1c
    return-void
.end method
