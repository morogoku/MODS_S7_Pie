.class public final synthetic Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$vY8ORJWQxNNk6wv2Kr8pLTW_L3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/friends/FrsServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/friends/FrsServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$vY8ORJWQxNNk6wv2Kr8pLTW_L3U;->f$0:Lcom/samsung/android/friends/FrsServiceImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/friends/-$$Lambda$FrsServiceImpl$vY8ORJWQxNNk6wv2Kr8pLTW_L3U;->f$0:Lcom/samsung/android/friends/FrsServiceImpl;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->lambda$vY8ORJWQxNNk6wv2Kr8pLTW_L3U(Lcom/samsung/android/friends/FrsServiceImpl;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
