.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$nO3Tsrdm4_DY58gqkuXEP2BOJL0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$nO3Tsrdm4_DY58gqkuXEP2BOJL0;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$nO3Tsrdm4_DY58gqkuXEP2BOJL0;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-static {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$resendState$2(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    return-void
.end method
