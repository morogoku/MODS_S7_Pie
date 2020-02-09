.class Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;
.super Ljava/lang/Object;
.source "SPluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginExceptionHandler"
.end annotation


# instance fields
.field private final mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/splugins/SPluginManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    const-string/jumbo v0, "plugin.debugging"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginPrefs;->getFirstUncaughtExceptionTime(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/4 v8, 0x1

    if-eqz v0, :cond_4

    sub-long v9, v2, v4

    const-wide/32 v11, 0x2bf20

    cmp-long v0, v9, v11

    if-lez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginPrefs;->getUncaughtExceptionCount(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, v8

    const/4 v9, 0x5

    if-lt v0, v9, :cond_3

    const-string v9, "SPluginManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UncaughtException - currentTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "   firstExceptionTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v10}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$200(Lcom/android/systemui/splugins/SPluginManagerImpl;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v10}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$300(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v11, v9}, Lcom/android/systemui/splugins/SPluginInstanceManager;->disableAll(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v10}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/android/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v7}, Lcom/android/systemui/splugins/SPluginPrefs;->setFirstUncaughtExceptionTime(Landroid/content/Context;J)V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "all_splugin_disabled"

    invoke-static {v1, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/systemui/splugins/SPluginPrefs;->setFirstUncaughtExceptionTime(Landroid/content/Context;J)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
