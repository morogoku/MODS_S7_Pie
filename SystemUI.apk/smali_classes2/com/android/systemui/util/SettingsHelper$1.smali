.class Lcom/android/systemui/util/SettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$1;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$1;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/util/SettingsHelper;->access$200(Lcom/android/systemui/util/SettingsHelper;)Lcom/android/systemui/util/SettingsHelper$ItemMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$1;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/util/SettingsHelper;->access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->updateMapForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    const-string v2, "SettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange() COMPLETED elapsed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$1;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2, p2}, Lcom/android/systemui/util/SettingsHelper;->access$300(Lcom/android/systemui/util/SettingsHelper;Landroid/net/Uri;)V

    return-void
.end method
