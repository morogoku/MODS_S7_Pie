.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSManagerService$fZr_jJvIFi2ZKlwn9SLBEFc9F1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSManagerService;

.field private final synthetic f$1:Lcom/samsung/android/server/virtualspace/VSSession;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSManagerService;Lcom/samsung/android/server/virtualspace/VSSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSManagerService$fZr_jJvIFi2ZKlwn9SLBEFc9F1c;->f$0:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSManagerService$fZr_jJvIFi2ZKlwn9SLBEFc9F1c;->f$1:Lcom/samsung/android/server/virtualspace/VSSession;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSManagerService$fZr_jJvIFi2ZKlwn9SLBEFc9F1c;->f$0:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSManagerService$fZr_jJvIFi2ZKlwn9SLBEFc9F1c;->f$1:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->lambda$connect$0(Lcom/samsung/android/server/virtualspace/VSManagerService;Lcom/samsung/android/server/virtualspace/VSSession;)V

    return-void
.end method
