.class final Lcom/unity3d/player/UnityPlayer$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$1$1;->a:Lcom/unity3d/player/UnityPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$1$1;->a:Lcom/unity3d/player/UnityPlayer$1;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$1;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->e(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/l;->d()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$1$1;->a:Lcom/unity3d/player/UnityPlayer$1;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$1;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->f(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method
