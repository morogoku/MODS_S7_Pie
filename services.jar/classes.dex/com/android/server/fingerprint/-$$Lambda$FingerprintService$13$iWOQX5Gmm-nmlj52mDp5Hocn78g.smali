.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$13$iWOQX5Gmm-nmlj52mDp5Hocn78g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService$13;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService$13;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$13$iWOQX5Gmm-nmlj52mDp5Hocn78g;->f$0:Lcom/android/server/fingerprint/FingerprintService$13;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$13$iWOQX5Gmm-nmlj52mDp5Hocn78g;->f$0:Lcom/android/server/fingerprint/FingerprintService$13;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$13;->lambda$onUserSwitchComplete$0(Lcom/android/server/fingerprint/FingerprintService$13;)V

    return-void
.end method
