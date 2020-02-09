.class public final synthetic Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/sidescreen/applist/model/AppInfo;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sidescreen/applist/model/AppInfo;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;->f$0:Lcom/android/systemui/sidescreen/applist/model/AppInfo;

    iput-object p2, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;->f$0:Lcom/android/systemui/sidescreen/applist/model/AppInfo;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$AppInfo$8jsqG80OOu_LbYvEUJliDTYpYCY;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->lambda$startActivity$0(Lcom/android/systemui/sidescreen/applist/model/AppInfo;Landroid/content/Context;I)V

    return-void
.end method
