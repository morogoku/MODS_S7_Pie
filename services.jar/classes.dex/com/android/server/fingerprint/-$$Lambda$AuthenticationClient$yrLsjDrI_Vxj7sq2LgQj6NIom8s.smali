.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$yrLsjDrI_Vxj7sq2LgQj6NIom8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$yrLsjDrI_Vxj7sq2LgQj6NIom8s;->f$0:Lcom/android/server/fingerprint/AuthenticationClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$yrLsjDrI_Vxj7sq2LgQj6NIom8s;->f$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->lambda$handleSystemUIEventForInDisplaySensor$6(Lcom/android/server/fingerprint/AuthenticationClient;)V

    return-void
.end method
