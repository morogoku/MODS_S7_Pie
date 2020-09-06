.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/MultiWindowFreezeAnimation;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowFreezeAnimation;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;->f$0:Lcom/android/server/wm/MultiWindowFreezeAnimation;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;->f$0:Lcom/android/server/wm/MultiWindowFreezeAnimation;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowFreezeAnimation$PvETgKhiIFFqi1FA2YUsagnHJ4g;->f$1:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->lambda$findWindowByType$0(Lcom/android/server/wm/MultiWindowFreezeAnimation;ILcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
