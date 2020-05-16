.class Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;
.super Landroid/database/ContentObserver;
.source "ServiceBoxAODSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;

.field final synthetic val$dbKey:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->this$0:Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;

    iput-object p3, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->val$dbKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->this$0:Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;

    iget-object v1, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->val$dbKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;->access$000(Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ServiceBoxAODSettingManager_LOCKSTAR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged() uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->this$0:Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;

    iget-object v2, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;->access$100(Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->this$0:Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;

    iget-object v2, p0, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager$1;->this$0:Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;->access$200(Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxPageOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;->access$300(Lcom/android/systemui/lockstar/ServiceBoxAODSettingManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
