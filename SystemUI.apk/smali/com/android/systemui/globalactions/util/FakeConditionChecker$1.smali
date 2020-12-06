.class Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "FakeConditionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/util/FakeConditionChecker;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/util/FakeConditionChecker;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/util/FakeConditionChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;->this$0:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;->this$0:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    invoke-static {v3}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->access$000(Lcom/android/systemui/globalactions/util/FakeConditionChecker;)Lcom/samsung/android/globalactions/util/LogWrapper;

    move-result-object v3

    const-string v4, "FakeConditionChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_CONDITION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;->this$0:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    invoke-static {v3}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->access$000(Lcom/android/systemui/globalactions/util/FakeConditionChecker;)Lcom/samsung/android/globalactions/util/LogWrapper;

    move-result-object v3

    const-string v4, "FakeConditionChecker"

    const-string v5, "added"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;->this$0:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    invoke-static {v3}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->access$000(Lcom/android/systemui/globalactions/util/FakeConditionChecker;)Lcom/samsung/android/globalactions/util/LogWrapper;

    move-result-object v3

    const-string v4, "FakeConditionChecker"

    const-string/jumbo v5, "updated"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_CONDITION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;->this$0:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    invoke-static {v3}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->access$000(Lcom/android/systemui/globalactions/util/FakeConditionChecker;)Lcom/samsung/android/globalactions/util/LogWrapper;

    move-result-object v3

    const-string v4, "FakeConditionChecker"

    const-string/jumbo v5, "removed"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
