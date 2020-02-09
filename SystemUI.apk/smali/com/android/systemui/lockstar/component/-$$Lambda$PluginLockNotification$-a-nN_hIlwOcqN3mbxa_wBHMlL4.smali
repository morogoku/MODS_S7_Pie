.class public final synthetic Lcom/android/systemui/lockstar/component/-$$Lambda$PluginLockNotification$-a-nN_hIlwOcqN3mbxa_wBHMlL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/lockstar/component/PluginLockNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/lockstar/component/-$$Lambda$PluginLockNotification$-a-nN_hIlwOcqN3mbxa_wBHMlL4;->f$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/-$$Lambda$PluginLockNotification$-a-nN_hIlwOcqN3mbxa_wBHMlL4;->f$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-static {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->lambda$registerNotiTypeCallback$0(Lcom/android/systemui/lockstar/component/PluginLockNotification;Landroid/net/Uri;)V

    return-void
.end method
